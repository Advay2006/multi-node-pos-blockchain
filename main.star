def run(plan):
    plan.print("started")
    
    # Define the first Ethereum node
    node1_config = plan.add_service(
        service_name="node1",
        config=plan.new_container_config_builder(
            image="ethereum/client-go:v1.11.5"
        ).with_cmd(["--http", "--http.addr", "0.0.0.0", "--http.port", "8545", "--http.api", "eth,net,web3"])
        .with_port_binding("8545", 8545)
        .build()
    )

    # Define the second Ethereum node
    node2_config = plan.add_service(
        service_name="node2",
        config=plan.new_container_config_builder(
            image="ethereum/client-go:v1.11.5"
        ).with_cmd(["--http", "--http.addr", "0.0.0.0", "--http.port", "8546", "--http.api", "eth,net,web3"])
        .with_port_binding("8546", 8546)
        .build()
    )

   



# Define the run function
# def run(plan):
    #Log a message to indicate that Kurtosis is working
    #plan.print("hello world!")
