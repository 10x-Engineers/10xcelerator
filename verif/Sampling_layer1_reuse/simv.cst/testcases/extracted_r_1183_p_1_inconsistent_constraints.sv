class c_1183_1;
    integer i = -196;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1183_1;
    c_1183_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx10111011zzx1zx1x1zx10x11xz10xxxxzxzxzzxxzxxzzzzzxxxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
