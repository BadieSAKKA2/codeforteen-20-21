Program BacTheo2015P;

Uses WinCrt;

Type
    MdpRecord=Record
        Mdp:String;
        Scoremdp:Integer;
        Forcemdp:String
    End;
    Records=File Of MdpRecord;
Var
    F,Fort:Text;
    Ch:String;
    FE:Records;
    
Function Score(Ch:String):Integer;

    Function Bonus(Ch:String):Integer;

    Function NbCaracteresMajus(Ch:String):Integer;
    Var
        i,Nb:Integer;
    Begin
        Nb:=0;
        For i:=1 To Length(Ch) Do
            If(Ch[i] In ['A'..'Z']) Then
                Nb:=Nb+1;
        NbCaracteresMajus:=Nb;
    End;

    Function NbCaracteresMinus(Ch:String):Integer;
    Var
        i,Nb:Integer;
    Begin
        Nb:=0;
        For i:=1 To Length(Ch) Do
            If(Ch[i] In ['a'..'z']) Then
                Nb:=Nb+1;
        NbCaracteresMinus:=Nb;
    End;

    Function NbCaracteresNonAlpha(Ch:String):Integer;
    Var
        i,Nb:Integer;
    Begin
        Nb:=0;
        For i:=1 To Length(Ch) Do
            If(Not(Upcase(Ch[i]) In ['A'..'Z'])) Then
                Nb:=Nb+1;
        NbCaracteresNonAlpha:=Nb;
    End;

    Begin
        Bonus:=(Length(Ch)*4)+((Length(Ch)-NbCaracteresMajus(Ch))*2)+((Length(Ch)-NbCaracteresMinus(Ch))*3)+(NbCaracteresNonAlpha(Ch)*5);
    End;

    Function Penalites(Ch:String):Integer;

    Function SequenceMajus(Ch:String):Integer;
    Var
        Max,i:Integer;
        sequence:String;
        
    Begin
        Max:=0;
        sequence:='';
        i:=1;
       For i:=1 To Length(Ch) Do
       Begin
            Repeat
                If Ch[i] in ['A'..'Z'] Then 
                Begin
                    Sequence:=Sequence+Ch[i];
                    i:=i+1;
                End;
            Until(Not(Ch[i] in ['A'..'Z']));
            If Length(Sequence)>Max Then
                Max:=Length(Sequence);
            Sequence:='';
       End;
        SequenceMajus:=Max;
    End;

    Function SequenceMinus(Ch:String):Integer;
    Var
        Max,i:Integer;
        sequence:String;
        
    Begin
        Max:=0;
        sequence:='';
        i:=1;
       For i:=1 To Length(Ch) Do
       Begin
            Repeat
                If Ch[i] in ['a'..'z'] Then 
                Begin
                    Sequence:=Sequence+Ch[i];
                    i:=i+1;
                End;
            Until(Not(Ch[i] in ['a'..'z']));
            If Length(Sequence)>Max Then
                Max:=Length(Sequence);
            Sequence:='';
       End;
        SequenceMinus:=Max;
    End;

    Begin
        Penalites:=(SequenceMinus(Ch)*2)+(SequenceMajus(Ch)*2);
    End;

Begin
	Score:=Bonus(Ch)-Penalites(Ch);
End;

Function Force(Ch:String):String;
Begin
	If Score(Ch)<20 Then
        Force:='Tres Faible'
    Else If Score(Ch)<40 Then
        Force:='Faible'
    Else If Score(Ch)<60 Then
        Force:='Moyen'
    Else If Score(Ch)<80 Then
        Force:='Fort'
    Else
        Force:='Tres Fort';
End;

Procedure Remp(Var F:Text;Var FE:Records);
Var
    Ch:String;
    R:MdpRecord;
Begin
	Reset(F);
	ReWrite(FE);
	While Not(EoF(F)) Do
	Begin
		Readln(F,Ch);
        R.Mdp:=Ch;
        R.Scoremdp:=Score(Ch);
        R.Forcemdp:=(Force(Ch));
        Write(FE,R);
	End;
	Close(F);
	Close(FE);
End;

Procedure Remp2(Var Fort:Text;Var FE:Records);
Var
    Tmp:MdpRecord;
    
Begin
	Reset(FE);
	ReWrite(Fort);
	While(Not(EoF(FE))) Do
	Begin
		Read(FE,Tmp);
		If Tmp.Forcemdp='Tres Fort' Then
            WriteLn(Fort,Tmp.Mdp);
    End;
    Writeln(Fort);
    ReSet(FE);  
    While(Not(EoF(FE))) Do    
    Begin
		Read(FE,Tmp);
		If Tmp.Forcemdp='Tres Fort' Then
            WriteLn(Fort,Tmp.Mdp);
    End;   
    Close(FE);
    Close(Fort);
End;


(*Programme Principale*)
Begin
    Assign(F,'Motspass.txt');
    Assign(FE,'ForceMDP.dat');
    Assign(Fort,'MdpFort.txt');
    Remp(F,FE);
    Remp2(Fort,FE);
End.
