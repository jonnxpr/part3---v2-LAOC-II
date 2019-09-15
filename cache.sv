module cache(reset, seletorVia, habilita, clock, endereco, entradaDeDados, saidaDeDados, hit, miss, lru1, lru2, dirty1, dirty2, valid1, valid2);
input seletorVia;
input habilita;
input clock;
input reset;
input [2:0] endereco;
input [7:0] entradaDeDados;
output reg [7:0] saidaDeDados;
output reg dirty1, dirty2, lru1, lru2, valid1, valid2, hit, miss;
reg [7:0]varPadrao;
reg [7:0]dado[8][2];


	always @ (posedge clock) begin
		if (reset)
		  begin
		    varPadrao = 8'b11111111;
		    saidaDeDados = 8'b00000000;
		    dirty1 = 0;
		    dirty2 = 0;
		    lru1 = 0;
		    lru2 = 0;
		    valid1 = 1;
		    valid2 = 1;
		    hit = 0;
		    miss = 0;
		    dado[0][0] = varPadrao;
		    dado[0][1] = varPadrao;
		    dado[1][0] = varPadrao;
		    dado[1][1] = varPadrao;
		    dado[2][0] = varPadrao;
		    dado[2][1] = varPadrao;
		    dado[3][0] = varPadrao;
		    dado[3][1] = varPadrao;
		    dado[4][0] = varPadrao;
		    dado[4][1] = varPadrao;
		    dado[5][0] = varPadrao;
		    dado[5][1] = varPadrao;
		    dado[6][0] = varPadrao;
		    dado[6][1] = varPadrao;
		    dado[7][0] = varPadrao;
		    dado[7][1] = varPadrao;
		  end
		if (seletorVia == 0) // Seleciona via 1
			begin
				if (habilita == 1) //Habilita escrita
					begin
					  case (endereco)
					    3'b000:
					      if (dado[0][0] == varPadrao)
					        begin
					          dirty1 = 1;
					          dado[0][0] = entradaDeDados;
					          valid1 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty1 = 1;
					        dado[0][0] = entradaDeDados;
					        valid1 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					   3'b001:
					      if (dado[1][0] == varPadrao)
					        begin
					          dirty1 = 1;
					          dado[1][0] = entradaDeDados;
					          valid1 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty1 = 1;
					        dado[1][0] = entradaDeDados;
					        valid1 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					   3'b010:
					      if (dado[2][0] == varPadrao)
					        begin
					          dirty1 = 1;
					          dado[2][0] = entradaDeDados;
					          valid1 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty1 = 1;
					        dado[2][0] = entradaDeDados;
					        valid1 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					  3'b011:
					      if (dado[3][0] == varPadrao)
					        begin
					          dirty1 = 1;
					          dado[3][0] = entradaDeDados;
					          valid1 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty1 = 1;
					        dado[3][0] = entradaDeDados;
					        valid1 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					  3'b100:
					      if (dado[4][0] == varPadrao)
					        begin
					          dirty1 = 1;
					          dado[4][0] = entradaDeDados;
					          valid1 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty1 = 1;
					        dado[4][0] = entradaDeDados;
					        valid1 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					  3'b101:
					      if (dado[5][0] == varPadrao)
					        begin
					          dirty1 = 1;
					          dado[5][0] = entradaDeDados;
					          valid1 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty1 = 1;
					        dado[5][0] = entradaDeDados;
					        valid1 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					  3'b110:
					      if (dado[6][0] == varPadrao)
					        begin
					          dirty1 = 1;
					          dado[6][0] = entradaDeDados;
					          valid1 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty1 = 1;
					        dado[6][0] = entradaDeDados;
					        valid1 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					  3'b111:
					      if (dado[7][0] == varPadrao)
					        begin
					          dirty1 = 1;
					          dado[7][0] = entradaDeDados;
					          valid1 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty1 = 1;
					        dado[7][0] = entradaDeDados;
					        valid1 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					endcase
					
					if (lru1 == 1 && lru2 == 1)
									begin
										lru1 = 1;
										lru2 = 0;
									end
									else if (lru1 == 0 && lru2 == 0)
										begin
											lru1 = 1;
										end
									else if (lru1 == 0 && lru2 == 1)
										begin
											lru2 = 0;
											lru1 = 1;
									end
						end
			 end
				else // Habilita leitura
					begin
								case (endereco)
									3'b000 :
										if (entradaDeDados == dado[0][0])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[0][0];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[0][0] = entradaDeDados;
												saidaDeDados = dado[0][0];
											end
									3'b001 :
										if (entradaDeDados == dado[1][0])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[1][0];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[1][0] = entradaDeDados;
												saidaDeDados = dado[1][0];		
											end
									3'b010 :
										if (entradaDeDados == dado[2][0])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[2][0];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[2][0] = entradaDeDados;
												saidaDeDados = dado[2][0];
												
											end				
									3'b011 :
										if (entradaDeDados == dado[3][0])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[3][0];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[3][0] = entradaDeDados;
												saidaDeDados = dado[3][0];
												
											end													
									3'b100 :
										if (entradaDeDados == dado[4][0])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[4][0];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[4][0] = entradaDeDados;
												saidaDeDados = dado[4][0];
											end					
									3'b101 :
										if (entradaDeDados == dado[5][0])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[5][0];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[5][0] = entradaDeDados;
												saidaDeDados = dado[5][0];
											end			
									3'b110 :
										if (entradaDeDados == dado[6][0])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[6][0];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[6][0] = entradaDeDados;
												saidaDeDados = dado[6][0];
											end	
									3'b111 :
										if (entradaDeDados == dado[7][0])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[7][0];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[7][0] = entradaDeDados;
												saidaDeDados = dado[7][0];
											end			
								endcase
								
								if (lru1 == 1 && lru2 == 1)
									begin
										lru1 = 1;
										lru2 = 0;
									end
									else if (lru1 == 0 && lru2 == 0)
										begin
											lru1 = 1;
										end
									else if (lru1 == 0 && lru2 == 1)
										begin
											lru2 = 0;
											lru1 = 1;
									end		
		else // Seleciona via 2
			begin
				if (habilita == 1) //Habilita escrita
					begin
            begin
					  case (endereco)
					    3'b000:
					      if (dado[0][1] == varPadrao)
					        begin
					          dirty2 = 1;
					          dado[0][1] = entradaDeDados;
					          valid2 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty2 = 1;
					        dado[0][1] = entradaDeDados;
					        valid2 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					   3'b001:
					      if (dado[1][1] == varPadrao)
					        begin
					          dirty2 = 1;
					          dado[1][1] = entradaDeDados;
					          valid2 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty2 = 1;
					        dado[1][1] = entradaDeDados;
					        valid2 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					   3'b010:
					      if (dado[2][1] == varPadrao)
					        begin
					          dirty2 = 1;
					          dado[2][1] = entradaDeDados;
					          valid2 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty2 = 1;
					        dado[2][1] = entradaDeDados;
					        valid2 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					  3'b011:
					      if (dado[3][1] == varPadrao)
					        begin
					          dirty2 = 1;
					          dado[3][1] = entradaDeDados;
					          valid2 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty2 = 1;
					        dado[3][1] = entradaDeDados;
					        valid2 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					  3'b100:
					      if (dado[4][1] == varPadrao)
					        begin
					          dirty2 = 1;
					          dado[4][1] = entradaDeDados;
					          valid2 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty2 = 1;
					        dado[4][1] = entradaDeDados;
					        valid2 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					  3'b101:
					      if (dado[5][1] == varPadrao)
					        begin
					          dirty2 = 1;
					          dado[5][1] = entradaDeDados;
					          valid2 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty2 = 1;
					        dado[5][1] = entradaDeDados;
					        valid2 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					  3'b110:
					      if (dado[6][1] == varPadrao)
					        begin
					          dirty2 = 1;
					          dado[6][1] = entradaDeDados;
					          valid2 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty2 = 1;
					        dado[6][1] = entradaDeDados;
					        valid2 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					  3'b111:
					      if (dado[7][1] == varPadrao)
					        begin
					          dirty2 = 1;
					          dado[7][1] = entradaDeDados;
					          valid2 = 1;
					          miss = 1;
					          hit = 0;
					          saidaDeDados = entradaDeDados;
					        end
					      else
					       begin
					        dirty2 = 1;
					        dado[7][1] = entradaDeDados;
					        valid2 = 1; 
					        hit = 1;
					        miss = 0;
					        saidaDeDados = entradaDeDados;
					      end
					endcase
					
					if (lru1 == 1 && lru2 == 1)
									begin
										lru1 = 0;
										lru2 = 1;
									end
									else if (lru1 == 0 && lru2 == 0)
										begin
											lru2 = 1;
										end
									else if (lru1 == 1 && lru2 == 0)
										begin
											lru2 = 1;
											lru1 = 0;
									end
						end
			 end
				else // Habilita leitura
					begin
						if (lru2 == 1)
							begin
								case (endereco)
									3'b000 :
										if (entradaDeDados == dado[0][1])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[0][1];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[0][1] = entradaDeDados;
												saidaDeDados = dado[0][1];
												
											end
									3'b001 :
										if (entradaDeDados == dado[1][1])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[1][1];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[1][0] = entradaDeDados;
												saidaDeDados = dado[1][1];
												
											end
									3'b010 :
										if (entradaDeDados == dado[2][1])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[2][1];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[2][0] = entradaDeDados;
												saidaDeDados = dado[2][1];
												
											end				
									3'b011 :
										if (entradaDeDados == dado[3][1])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[3][1];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[3][0] = entradaDeDados;
												saidaDeDados = dado[3][1];
												
											end												
									3'b100 :
										if (entradaDeDados == dado[4][1])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[4][1];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[4][0] = entradaDeDados;
												saidaDeDados = dado[4][1];
												
											end					
									3'b101 :
										if (entradaDeDados == dado[5][1])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[5][1];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[5][1] = entradaDeDados;
												saidaDeDados = dado[5][1];
												
											end		
									3'b110 :
										if (entradaDeDados == dado[6][1])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[6][1];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[6][1] = entradaDeDados;
												saidaDeDados = dado[6][1];
												
											end
									3'b111 :
										if (entradaDeDados == dado[7][1])
											begin
												hit = 1;
												miss = 0;
												saidaDeDados = dado[7][1];
											end
										else 
											begin
												miss = 1;
												hit = 0;
												dado[7][1] = entradaDeDados;
												saidaDeDados = dado[7][1];
												
											end			
								endcase
								
								if (lru1 == 1 && lru2 == 1)
											begin
												lru1 = 0;
												lru2 = 1;
											end
										else if (lru1 == 0 && lru2 == 0)
											begin
												lru2 = 1;
										end
							end
					end
			end
		end
	end
endmodule




