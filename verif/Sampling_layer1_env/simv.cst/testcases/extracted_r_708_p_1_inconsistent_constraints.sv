class c_708_1;
    integer i = -116;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_708_1;
    c_708_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00xx1zx0x1zzz111xzxx101xzx11x1zzxxzxzzzxxxxxxxxxxxzxzxxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
