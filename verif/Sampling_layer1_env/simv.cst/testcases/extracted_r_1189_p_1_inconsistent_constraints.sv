class c_1189_1;
    integer i = -197;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1189_1;
    c_1189_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1110x1zzx1110x00xx1zx1xzxzx0x0x1zxxxzxzzxzzzzxxzzxxxzzzzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
