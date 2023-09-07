class c_840_1;
    integer i = -138;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_840_1;
    c_840_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx1111zx1xxz1zzxx11z1xx1z00xz10zzzzxzzxxxzxzxzzzzzzzzxxxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
