/// Module: oracle
module oracle::weather {
    use std::string::String;
    use sui::dynamic_object_field as dof;
    use sui::package;

    public struct AdminCap has key, store { id: UID }

    public struct WEATHER has drop {}

    public struct WeatherOracle has key {
        id: UID,
        address: address,
        name: String,
        description: String,
    }

    public struct CityWeatherOracle has key,store {
        id: UID,
        geoname_id: u32,
        name: String,
        country: String,
        latitude: u32,
        positive_latitude: bool,
        longitude: u32,
        positive_longitude: bool,
        weather_id: u16,
        temp: u32,
        pressure: u32,
        humidity: u8,
        visibility: u16,
        wind_speed: u16,
        wind_deg: u16,
        wind_gust: Option<u16>,
        clouds: u8,
        dt: u32
    }

    fun init(otw: WEATHER, ctx: &mut TxContext) {
        package::claim_and_keep(otw, ctx);

        let cap = AdminCap{ id: object::new(ctx)};
        transfer::share_object(WeatherOracle {
            id: object::new(ctx),
            address: ctx.sender(),
            name: b"SuiMeteo".to_string(),
            description: b"A weather oracle.".to_string(),
        });
        transfer::public_transfer(cap,ctx.sender());
    }

    public fun add_city(
        _: &AdminCap,
        oracle: &mut WeatherOracle,
        geoname_id: u32,
        name: String,
        country: String,
        latitude: u32,
        positive_latitude: bool,
        longitude: u32,
        positive_longitude: bool,
        ctx: &mut TxContext
    ) {
        dof::add(&mut oracle.id, geoname_id,
            CityWeatherOracle {
                id: object::new(ctx),
                geoname_id,
                name,
                country,
                latitude,
                positive_latitude,
                longitude,
                positive_longitude,
                weather_id: 0,
                temp: 0,
                pressure: 0,
                humidity: 0,
                visibility: 0,
                wind_speed: 0,
                wind_deg: 0,
                wind_gust: option::none(),
                clouds: 0,
                dt: 0
            }
        );
    }

    public fun remove_city(
        _: &AdminCap,
        oracle: &mut WeatherOracle,
        geoname_id: u32
    ) {
        let CityWeatherOracle {
            id,
            geoname_id:_,
            name: _,
            country:_,
            latitude: _,
            positive_latitude:_,
            longitude: _,
            positive_longitude: _,
            weather_id: _,
            temp: _,
            pressure:_,
            humidity:_,
            visibility:_,
            wind_speed:_,
            wind_deg:_,
            wind_gust:_,
            clouds:_,
            dt: _
        } = dof::remove(&mut oracle.id,geoname_id);
        object::delete(id);
    }

    public fun update(
        _:&AdminCap,
        oracle: &mut WeatherOracle,
        geoname_id: u32,
        weather_id: u16,
        temp: u32,
        pressure: u32,
        humidity: u8,
        visibility: u16,
        wind_speed: u16,
        wind_deg: u16,
        wind_gust: Option<u16>,
        clouds: u8,
        dt: u32
    ) {
        let city_weather_oralce_mut = dof::borrow_mut<u32,CityWeatherOracle>(&mut oracle.id,geoname_id);
        city_weather_oralce_mut.weather_id =weather_id;
        city_weather_oralce_mut.temp = temp;
        city_weather_oralce_mut.pressure = pressure;
        city_weather_oralce_mut.humidity = humidity;
        city_weather_oralce_mut.visibility = visibility;
        city_weather_oralce_mut.wind_speed = wind_speed;
        city_weather_oralce_mut.wind_deg = wind_deg;
        city_weather_oralce_mut.wind_gust = wind_gust;
        city_weather_oralce_mut.clouds = clouds;
        city_weather_oralce_mut.dt = dt;
    }

    public fun city_weather_oracle_name(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): String {
        let city_weather_oracle = dof::borrow<u32,CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.name
    }

    public fun city_weather_oracle_country(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): String {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.country
    }

    public fun city_weather_oracle_latitude(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): u32 {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.latitude
    }

    public fun city_weather_oracle_positive_latitude(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): bool {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.positive_latitude
    }

    public fun city_weather_oracle_longitude(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): u32 {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.longitude
    }

    public fun city_weather_oracle_positive_longitude(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): bool {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.positive_longitude
    }

    public fun city_weather_oracle_weather_id(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): u16 {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.weather_id
    }

    public fun city_weather_oracle_temp(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): u32 {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.temp
    }

    public fun city_weather_oracle_pressure(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): u32 {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.pressure
    }

    public fun city_weather_oracle_humidity(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): u8 {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.humidity
    }

    public fun city_weather_oracle_visibility(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): u16 {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.visibility
    }

    public fun city_weather_oracle_wind_speed(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): u16 {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.wind_speed
    }

    public fun city_weather_oracle_wind_deg(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): u16 {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.wind_deg
    }

    public fun city_weather_oracle_gust(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): Option<u16> {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.wind_gust
    }

    public fun city_weather_oracle_clouds(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): u8 {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.clouds
    }

    public fun city_weather_oracle_dt(
        weather_oracle: &WeatherOracle,
        geoname_id: u32
    ): u32 {
        let city_weather_oracle = dof::borrow<u32, CityWeatherOracle>(&weather_oracle.id,geoname_id);
        city_weather_oracle.dt
    }

    public struct WeatherNFT has key,store {
        id: UID,
        geoname_id: u32,
        name: String,
        country: String,
        latitude: u32,
        positive_latitude: bool,
        longitude: u32,
        positive_longitude: bool,
        weather_id: u16,
        temp: u32,
        pressure: u32,
        humidity: u8,
        visibility: u16,
        wind_speed: u16,
        wind_deg: u16,
        wind_gust: Option<u16>,
        clouds: u8,
        dt: u32
    }

    public fun mint(
        oracle: &WeatherOracle,
        geoname_id: u32,
        ctx: &mut TxContext
    ): WeatherNFT {
        let city_weather_oracle = dof::borrow<u32,CityWeatherOracle>(&oracle.id, geoname_id);
        WeatherNFT {
            id: object::new(ctx),
            geoname_id: city_weather_oracle.geoname_id,
            name: city_weather_oracle.name,
            country: city_weather_oracle.country,
            latitude: city_weather_oracle.latitude,
            positive_latitude: city_weather_oracle.positive_latitude,
            longitude: city_weather_oracle.longitude,
            positive_longitude: city_weather_oracle.positive_longitude,
            weather_id: city_weather_oracle.weather_id,
            temp: city_weather_oracle.temp,
            pressure: city_weather_oracle.pressure,
            humidity: city_weather_oracle.humidity,
            visibility:city_weather_oracle.visibility,
            wind_speed: city_weather_oracle.wind_speed,
            wind_deg: city_weather_oracle.wind_deg,
            wind_gust: city_weather_oracle.wind_gust,
            clouds: city_weather_oracle.clouds,
            dt: city_weather_oracle.dt
        }
    }











}

