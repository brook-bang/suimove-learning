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

    public struct City


}

