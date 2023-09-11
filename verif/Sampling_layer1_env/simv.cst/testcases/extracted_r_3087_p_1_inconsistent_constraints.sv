class c_3087_1;
    integer i = -513;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3087_1;
    c_3087_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z01zxz01xz1x010xxz111x1x11zxxxxxxzzzxzzxzxxzxzxxzxxxzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
