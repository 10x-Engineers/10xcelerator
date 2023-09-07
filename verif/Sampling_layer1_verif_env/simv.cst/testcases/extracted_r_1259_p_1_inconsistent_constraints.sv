class c_1259_1;
    integer i = -208;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1259_1;
    c_1259_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100z1xxx0zzz0xz01x1z010z100z1z0zzxxxxxzxzxzzzzzxxxxzzxzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
