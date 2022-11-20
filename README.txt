The Auction Smart contract :- Planning and Design

1. The Auction has a owner(a person who sells a good or service), a start and a end date;

2. The owner can cancel the auction if there is an emergency or can finalize the auction after its end time

3. People are sending ETH by calling a function placeBid(). The sender's address and the value sent to the auction will be
stored in a mapping variable called bids;

4. Users are incentivized to bid the maximum they are willing to pay, but they are not bound to that full amount , but rather
to the previous highest bid plus an increment . The contract will automatically bid up to a given amount

5. The highestBidingBid is the selling price and the higestBidder the person who won the auction

6. After the auction ends the owner gets the highestBidingBid and everybody else withdraws their own amount


Withdrawal Pattern:-

The smart contract is designed in such a way that we don't proactively send back the funds to the users that didn't win
the auction. We'll use the "Withdrawal pattern" instead

We should only send ETH to a user when he explicity requests it

This is the "Withdrawal" pattern and helps us avoiding re-entrance attacks that could cause unexpected behaviour, including
catastrophic finanical loss for the users

