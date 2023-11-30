#[contract]
mod HelloStarknetMod {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Yo(message: felt252) {
        let caller = get_caller_address();
        Yo (caller, message);
    }

}
