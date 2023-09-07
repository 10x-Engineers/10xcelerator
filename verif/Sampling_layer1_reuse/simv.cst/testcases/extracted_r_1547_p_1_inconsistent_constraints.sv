class c_1547_1;
    integer i = -256;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1547_1;
    c_1547_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zzzx1xxz00z0zxz11zzx00x0110z10zxzzxzxxzxxxzzxxxxzxzzxzxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
