class c_1075_1;
    integer i = -178;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1075_1;
    c_1075_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10x11xxx0101zz11zx1xz11101zz0zxxxzzxxzxxxxxzzxxzzzzzxxzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
