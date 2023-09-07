class c_2898_1;
    integer i = -481;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2898_1;
    c_2898_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx101x11x10zz10xx1zz1000zxx1xz0xxzxzzzzzzzzzzxxzxxxzzzxxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
