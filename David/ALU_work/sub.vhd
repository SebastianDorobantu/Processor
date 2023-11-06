when "0001" =>
				
				if neg_ovflow = '1' then
					ALU_out <= std_logic_vector(signed(ALU_A) + (not signed(ALU_B))+ 1);
					proc_complete <= '1';
				elsif pos_ovflow = '1' then
					ALU_out <= std_logic_vector(signed(ALU_A) - signed(ALU_B));
					proc_complete <= '1';
				elsif (ALU_A(ALU_A'left)= '0' and ALU_B(ALU_B'left)= '1') then
						ALU_sum <= std_logic_vector(signed(ALU_A) + (not signed(ALU_B))+ 1);
						ALU_out <= ALU_sum;
						proc_complete <= '1';
					if (signed(ALU_sum) < 0) then
						ALU_out <= (others => 'Z');
						ovflow_flag <= '1';
					end if;
				elsif (ALU_A(ALU_A'left)= '1' and ALU_B(ALU_B'left)= '0') then
						ALU_sum <= std_logic_vector(signed(ALU_A) - signed(ALU_B));
						ALU_out <= ALU_sum;
						proc_complete <= '1';
					if (signed(ALU_sum) > 0) then
						ALU_out <= (others => 'Z');
						ovflow_flag <= '1';
					end if;
				end if;
				if overflow = '1' then
					ALU_out <= (others => 'Z');
					ovflow_flag <= '1';
			
				end if;
