unsigned UART_CRC16_Work(blob CRC_Buf)
{


 char i,j;


 unsigned CRC_Sumx;


 unsigned CRC_Leni = bloblen(CRC_Buf);


 CRC_Sumx=0xFFFF;


 for(i=0;i<CRC_Leni;i++)


 {


  CRC_Sumx^=(unsigned)CRC_Buf[i];


  for(j=0;j<8;j++)


  {


   if(CRC_Sumx & 0x01)


   {


    CRC_Sumx>>=1; 


    CRC_Sumx^=0xA001;


   }


   else


   {


    CRC_Sumx>>=1;


   }


  } 


 }


 return (CRC_Sumx);


}
