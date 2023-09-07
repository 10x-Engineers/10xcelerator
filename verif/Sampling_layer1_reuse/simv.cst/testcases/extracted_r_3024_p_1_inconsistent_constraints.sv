class c_3024_1;
    integer i = -502;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3024_1;
    c_3024_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1x0zx01001z011xxzx0z011xzz00x1xzzxxzxxzxzxxxzzzxzxzxzxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
