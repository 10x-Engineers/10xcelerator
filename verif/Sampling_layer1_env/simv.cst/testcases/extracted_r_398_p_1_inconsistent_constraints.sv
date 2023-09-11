class c_398_1;
    integer i = -65;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_398_1;
    c_398_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110x1x10zxzzzx11z1z00z00xzx0x0z0zzxzxxzzxxzxzzzzzzxzxzxxxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
