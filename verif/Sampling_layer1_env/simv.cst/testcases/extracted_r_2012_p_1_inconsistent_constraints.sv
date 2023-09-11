class c_2012_1;
    integer i = -334;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2012_1;
    c_2012_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0zx0zx0xz000z010zx10z11xzx0zxzxzxzzxxzzzxxzxzzxzxzxzxzzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
