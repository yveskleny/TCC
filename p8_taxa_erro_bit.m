% Taxa de erro de bit

ber_teorico = qf(SNR);

taxa_erro_bit_depois_decod = (err_restantes_pos_decod)/length(sinal_hamming_recuperado(1,:));
fim = 201;
semilogy(SNR_dB(1:fim),taxa_erro_bit_antes_decod(1:fim))
hold on
%semilogy(SNR_dB(1:fim),ber_teorico(1:fim))
semilogy(SNR_dB(1:fim),taxa_erro_bit_sem_hamming(1:fim))
semilogy(SNR_dB(1:fim),taxa_erro_bit_depois_decod(1:fim));
% esse calculo dos erros precisa ser feito entre o sinal recebido e o sinal
% apos a decodifica��o pq nem sempre o codigo de Hamming ir� corrigir o
% sinal da maneira correta
grid
legend('BER - Antes da Corre��o', 'BER - Sem Codifica��o','BER - Ap�s Corre��o')
title('Perfomance do Canal')
xlabel('SNR dB (dB)')
ylabel('Taxa de Erro de Bit')
