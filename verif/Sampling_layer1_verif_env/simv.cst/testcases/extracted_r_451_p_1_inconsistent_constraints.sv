class c_451_1;
    integer i = -74;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_451_1;
    c_451_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1011z11zzx00x011zzz101z110zx1z0xzxzzzxxzzxzzxxxxzzzxxzzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
