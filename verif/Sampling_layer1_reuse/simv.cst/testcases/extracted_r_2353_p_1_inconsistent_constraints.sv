class c_2353_1;
    integer i = -391;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2353_1;
    c_2353_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xz000xxx0x01zx1zz101zx1001100xzxxzxzxzxzzzxzzzxzxzzxxxzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
