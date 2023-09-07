class c_800_1;
    integer i = -132;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_800_1;
    c_800_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzz111xx0x10x1zx11010zx10xx01xzxxzzxxzxxzxzzzxzxxzxzzxxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
