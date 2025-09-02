/*
DATA/29/08/25
Nome: João Pedro Ferro Xavier
RA:170049-2024
simular matematicamente (ou por meio de programação) o crescimento da população
de coelhos ao longo do tempo, seguindo as regras biológicas definidas:
*/
void main() {
  int jovens = 2;
  int adultos = 0;

  print ("======= Simulação dos 25 meses =======");
  for (int mes = 1; mes <= 25; mes++) {
    adultos += jovens;
    jovens = adultos;

    if (mes > 12) {
      jovens = (jovens * 0.25).floor();
      adultos = (adultos * 0.25).floor();
    }

    int total = adultos + jovens;

    print("Fim do Mês $mes: População de coelhos: $total, Jovens: $jovens, Adultos: $adultos");

    if (total <= 0) {
      print("Toda população foi exterminada no mês $mes.");
      break;
    }
  }
}