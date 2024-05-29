import { ConnectButton, useCurrentAccount } from "@mysten/dapp-kit";
import { isValidSuiObjectId } from "@mysten/sui.js/utils";
import { useState } from "react";
import { CreateCounter } from "./CreateCounter";
import { Counter } from "./Counter";

export default function App() {
  const currentAccount = useCurrentAccount();
  const [counterId, setCounter] = useState(() => {
    const hash = window.location.hash.slice(1);
    return isValidSuiObjectId(hash) ? hash : null;
  });

  return (
    <div>
      <nav>
        <ConnectButton />
      </nav>
      <section>
        {!currentAccount ? (
          'Please connect your wallet'
        ): counterId ? (
          <Counter id = {counterId} />
        ): (
          <CreateCounter oncreate={(id) => {
            window.location.hash = id;
            setCounter(id);
          }}/>
        )}
      </section>
    </div>
  )







}