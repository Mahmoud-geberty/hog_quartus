	component hps0 is
		port (
			bridge_0_acknowledge            : in    std_logic                      := 'X';             -- acknowledge
			bridge_0_irq                    : in    std_logic                      := 'X';             -- irq
			bridge_0_address                : out   std_logic_vector(4 downto 0);                      -- address
			bridge_0_bus_enable             : out   std_logic;                                         -- bus_enable
			bridge_0_byte_enable            : out   std_logic_vector(15 downto 0);                     -- byte_enable
			bridge_0_rw                     : out   std_logic;                                         -- rw
			bridge_0_write_data             : out   std_logic_vector(127 downto 0);                    -- write_data
			bridge_0_read_data              : in    std_logic_vector(127 downto 0) := (others => 'X'); -- read_data
			clk_clk                         : in    std_logic                      := 'X';             -- clk
			hps_io_hps_io_emac1_inst_TX_CLK : out   std_logic;                                         -- hps_io_emac1_inst_TX_CLK
			hps_io_hps_io_emac1_inst_TXD0   : out   std_logic;                                         -- hps_io_emac1_inst_TXD0
			hps_io_hps_io_emac1_inst_TXD1   : out   std_logic;                                         -- hps_io_emac1_inst_TXD1
			hps_io_hps_io_emac1_inst_TXD2   : out   std_logic;                                         -- hps_io_emac1_inst_TXD2
			hps_io_hps_io_emac1_inst_TXD3   : out   std_logic;                                         -- hps_io_emac1_inst_TXD3
			hps_io_hps_io_emac1_inst_RXD0   : in    std_logic                      := 'X';             -- hps_io_emac1_inst_RXD0
			hps_io_hps_io_emac1_inst_MDIO   : inout std_logic                      := 'X';             -- hps_io_emac1_inst_MDIO
			hps_io_hps_io_emac1_inst_MDC    : out   std_logic;                                         -- hps_io_emac1_inst_MDC
			hps_io_hps_io_emac1_inst_RX_CTL : in    std_logic                      := 'X';             -- hps_io_emac1_inst_RX_CTL
			hps_io_hps_io_emac1_inst_TX_CTL : out   std_logic;                                         -- hps_io_emac1_inst_TX_CTL
			hps_io_hps_io_emac1_inst_RX_CLK : in    std_logic                      := 'X';             -- hps_io_emac1_inst_RX_CLK
			hps_io_hps_io_emac1_inst_RXD1   : in    std_logic                      := 'X';             -- hps_io_emac1_inst_RXD1
			hps_io_hps_io_emac1_inst_RXD2   : in    std_logic                      := 'X';             -- hps_io_emac1_inst_RXD2
			hps_io_hps_io_emac1_inst_RXD3   : in    std_logic                      := 'X';             -- hps_io_emac1_inst_RXD3
			hps_io_hps_io_sdio_inst_CMD     : inout std_logic                      := 'X';             -- hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0      : inout std_logic                      := 'X';             -- hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1      : inout std_logic                      := 'X';             -- hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK     : out   std_logic;                                         -- hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2      : inout std_logic                      := 'X';             -- hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3      : inout std_logic                      := 'X';             -- hps_io_sdio_inst_D3
			hps_io_hps_io_usb1_inst_D0      : inout std_logic                      := 'X';             -- hps_io_usb1_inst_D0
			hps_io_hps_io_usb1_inst_D1      : inout std_logic                      := 'X';             -- hps_io_usb1_inst_D1
			hps_io_hps_io_usb1_inst_D2      : inout std_logic                      := 'X';             -- hps_io_usb1_inst_D2
			hps_io_hps_io_usb1_inst_D3      : inout std_logic                      := 'X';             -- hps_io_usb1_inst_D3
			hps_io_hps_io_usb1_inst_D4      : inout std_logic                      := 'X';             -- hps_io_usb1_inst_D4
			hps_io_hps_io_usb1_inst_D5      : inout std_logic                      := 'X';             -- hps_io_usb1_inst_D5
			hps_io_hps_io_usb1_inst_D6      : inout std_logic                      := 'X';             -- hps_io_usb1_inst_D6
			hps_io_hps_io_usb1_inst_D7      : inout std_logic                      := 'X';             -- hps_io_usb1_inst_D7
			hps_io_hps_io_usb1_inst_CLK     : in    std_logic                      := 'X';             -- hps_io_usb1_inst_CLK
			hps_io_hps_io_usb1_inst_STP     : out   std_logic;                                         -- hps_io_usb1_inst_STP
			hps_io_hps_io_usb1_inst_DIR     : in    std_logic                      := 'X';             -- hps_io_usb1_inst_DIR
			hps_io_hps_io_usb1_inst_NXT     : in    std_logic                      := 'X';             -- hps_io_usb1_inst_NXT
			hps_io_hps_io_uart0_inst_RX     : in    std_logic                      := 'X';             -- hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX     : out   std_logic;                                         -- hps_io_uart0_inst_TX
			memory_mem_a                    : out   std_logic_vector(14 downto 0);                     -- mem_a
			memory_mem_ba                   : out   std_logic_vector(2 downto 0);                      -- mem_ba
			memory_mem_ck                   : out   std_logic;                                         -- mem_ck
			memory_mem_ck_n                 : out   std_logic;                                         -- mem_ck_n
			memory_mem_cke                  : out   std_logic;                                         -- mem_cke
			memory_mem_cs_n                 : out   std_logic;                                         -- mem_cs_n
			memory_mem_ras_n                : out   std_logic;                                         -- mem_ras_n
			memory_mem_cas_n                : out   std_logic;                                         -- mem_cas_n
			memory_mem_we_n                 : out   std_logic;                                         -- mem_we_n
			memory_mem_reset_n              : out   std_logic;                                         -- mem_reset_n
			memory_mem_dq                   : inout std_logic_vector(31 downto 0)  := (others => 'X'); -- mem_dq
			memory_mem_dqs                  : inout std_logic_vector(3 downto 0)   := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                : inout std_logic_vector(3 downto 0)   := (others => 'X'); -- mem_dqs_n
			memory_mem_odt                  : out   std_logic;                                         -- mem_odt
			memory_mem_dm                   : out   std_logic_vector(3 downto 0);                      -- mem_dm
			memory_oct_rzqin                : in    std_logic                      := 'X';             -- oct_rzqin
			reset_reset_n                   : in    std_logic                      := 'X';             -- reset_n
			hog_in_export                   : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- export
			hog_out_export                  : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- export
			switch_out_export               : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- export
			input_pixel_export              : in    std_logic_vector(31 downto 0)  := (others => 'X')  -- export
		);
	end component hps0;

	u0 : component hps0
		port map (
			bridge_0_acknowledge            => CONNECTED_TO_bridge_0_acknowledge,            --    bridge_0.acknowledge
			bridge_0_irq                    => CONNECTED_TO_bridge_0_irq,                    --            .irq
			bridge_0_address                => CONNECTED_TO_bridge_0_address,                --            .address
			bridge_0_bus_enable             => CONNECTED_TO_bridge_0_bus_enable,             --            .bus_enable
			bridge_0_byte_enable            => CONNECTED_TO_bridge_0_byte_enable,            --            .byte_enable
			bridge_0_rw                     => CONNECTED_TO_bridge_0_rw,                     --            .rw
			bridge_0_write_data             => CONNECTED_TO_bridge_0_write_data,             --            .write_data
			bridge_0_read_data              => CONNECTED_TO_bridge_0_read_data,              --            .read_data
			clk_clk                         => CONNECTED_TO_clk_clk,                         --         clk.clk
			hps_io_hps_io_emac1_inst_TX_CLK => CONNECTED_TO_hps_io_hps_io_emac1_inst_TX_CLK, --      hps_io.hps_io_emac1_inst_TX_CLK
			hps_io_hps_io_emac1_inst_TXD0   => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD0,   --            .hps_io_emac1_inst_TXD0
			hps_io_hps_io_emac1_inst_TXD1   => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD1,   --            .hps_io_emac1_inst_TXD1
			hps_io_hps_io_emac1_inst_TXD2   => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD2,   --            .hps_io_emac1_inst_TXD2
			hps_io_hps_io_emac1_inst_TXD3   => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD3,   --            .hps_io_emac1_inst_TXD3
			hps_io_hps_io_emac1_inst_RXD0   => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD0,   --            .hps_io_emac1_inst_RXD0
			hps_io_hps_io_emac1_inst_MDIO   => CONNECTED_TO_hps_io_hps_io_emac1_inst_MDIO,   --            .hps_io_emac1_inst_MDIO
			hps_io_hps_io_emac1_inst_MDC    => CONNECTED_TO_hps_io_hps_io_emac1_inst_MDC,    --            .hps_io_emac1_inst_MDC
			hps_io_hps_io_emac1_inst_RX_CTL => CONNECTED_TO_hps_io_hps_io_emac1_inst_RX_CTL, --            .hps_io_emac1_inst_RX_CTL
			hps_io_hps_io_emac1_inst_TX_CTL => CONNECTED_TO_hps_io_hps_io_emac1_inst_TX_CTL, --            .hps_io_emac1_inst_TX_CTL
			hps_io_hps_io_emac1_inst_RX_CLK => CONNECTED_TO_hps_io_hps_io_emac1_inst_RX_CLK, --            .hps_io_emac1_inst_RX_CLK
			hps_io_hps_io_emac1_inst_RXD1   => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD1,   --            .hps_io_emac1_inst_RXD1
			hps_io_hps_io_emac1_inst_RXD2   => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD2,   --            .hps_io_emac1_inst_RXD2
			hps_io_hps_io_emac1_inst_RXD3   => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD3,   --            .hps_io_emac1_inst_RXD3
			hps_io_hps_io_sdio_inst_CMD     => CONNECTED_TO_hps_io_hps_io_sdio_inst_CMD,     --            .hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0      => CONNECTED_TO_hps_io_hps_io_sdio_inst_D0,      --            .hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1      => CONNECTED_TO_hps_io_hps_io_sdio_inst_D1,      --            .hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK     => CONNECTED_TO_hps_io_hps_io_sdio_inst_CLK,     --            .hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2      => CONNECTED_TO_hps_io_hps_io_sdio_inst_D2,      --            .hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3      => CONNECTED_TO_hps_io_hps_io_sdio_inst_D3,      --            .hps_io_sdio_inst_D3
			hps_io_hps_io_usb1_inst_D0      => CONNECTED_TO_hps_io_hps_io_usb1_inst_D0,      --            .hps_io_usb1_inst_D0
			hps_io_hps_io_usb1_inst_D1      => CONNECTED_TO_hps_io_hps_io_usb1_inst_D1,      --            .hps_io_usb1_inst_D1
			hps_io_hps_io_usb1_inst_D2      => CONNECTED_TO_hps_io_hps_io_usb1_inst_D2,      --            .hps_io_usb1_inst_D2
			hps_io_hps_io_usb1_inst_D3      => CONNECTED_TO_hps_io_hps_io_usb1_inst_D3,      --            .hps_io_usb1_inst_D3
			hps_io_hps_io_usb1_inst_D4      => CONNECTED_TO_hps_io_hps_io_usb1_inst_D4,      --            .hps_io_usb1_inst_D4
			hps_io_hps_io_usb1_inst_D5      => CONNECTED_TO_hps_io_hps_io_usb1_inst_D5,      --            .hps_io_usb1_inst_D5
			hps_io_hps_io_usb1_inst_D6      => CONNECTED_TO_hps_io_hps_io_usb1_inst_D6,      --            .hps_io_usb1_inst_D6
			hps_io_hps_io_usb1_inst_D7      => CONNECTED_TO_hps_io_hps_io_usb1_inst_D7,      --            .hps_io_usb1_inst_D7
			hps_io_hps_io_usb1_inst_CLK     => CONNECTED_TO_hps_io_hps_io_usb1_inst_CLK,     --            .hps_io_usb1_inst_CLK
			hps_io_hps_io_usb1_inst_STP     => CONNECTED_TO_hps_io_hps_io_usb1_inst_STP,     --            .hps_io_usb1_inst_STP
			hps_io_hps_io_usb1_inst_DIR     => CONNECTED_TO_hps_io_hps_io_usb1_inst_DIR,     --            .hps_io_usb1_inst_DIR
			hps_io_hps_io_usb1_inst_NXT     => CONNECTED_TO_hps_io_hps_io_usb1_inst_NXT,     --            .hps_io_usb1_inst_NXT
			hps_io_hps_io_uart0_inst_RX     => CONNECTED_TO_hps_io_hps_io_uart0_inst_RX,     --            .hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX     => CONNECTED_TO_hps_io_hps_io_uart0_inst_TX,     --            .hps_io_uart0_inst_TX
			memory_mem_a                    => CONNECTED_TO_memory_mem_a,                    --      memory.mem_a
			memory_mem_ba                   => CONNECTED_TO_memory_mem_ba,                   --            .mem_ba
			memory_mem_ck                   => CONNECTED_TO_memory_mem_ck,                   --            .mem_ck
			memory_mem_ck_n                 => CONNECTED_TO_memory_mem_ck_n,                 --            .mem_ck_n
			memory_mem_cke                  => CONNECTED_TO_memory_mem_cke,                  --            .mem_cke
			memory_mem_cs_n                 => CONNECTED_TO_memory_mem_cs_n,                 --            .mem_cs_n
			memory_mem_ras_n                => CONNECTED_TO_memory_mem_ras_n,                --            .mem_ras_n
			memory_mem_cas_n                => CONNECTED_TO_memory_mem_cas_n,                --            .mem_cas_n
			memory_mem_we_n                 => CONNECTED_TO_memory_mem_we_n,                 --            .mem_we_n
			memory_mem_reset_n              => CONNECTED_TO_memory_mem_reset_n,              --            .mem_reset_n
			memory_mem_dq                   => CONNECTED_TO_memory_mem_dq,                   --            .mem_dq
			memory_mem_dqs                  => CONNECTED_TO_memory_mem_dqs,                  --            .mem_dqs
			memory_mem_dqs_n                => CONNECTED_TO_memory_mem_dqs_n,                --            .mem_dqs_n
			memory_mem_odt                  => CONNECTED_TO_memory_mem_odt,                  --            .mem_odt
			memory_mem_dm                   => CONNECTED_TO_memory_mem_dm,                   --            .mem_dm
			memory_oct_rzqin                => CONNECTED_TO_memory_oct_rzqin,                --            .oct_rzqin
			reset_reset_n                   => CONNECTED_TO_reset_reset_n,                   --       reset.reset_n
			hog_in_export                   => CONNECTED_TO_hog_in_export,                   --      hog_in.export
			hog_out_export                  => CONNECTED_TO_hog_out_export,                  --     hog_out.export
			switch_out_export               => CONNECTED_TO_switch_out_export,               --  switch_out.export
			input_pixel_export              => CONNECTED_TO_input_pixel_export               -- input_pixel.export
		);

