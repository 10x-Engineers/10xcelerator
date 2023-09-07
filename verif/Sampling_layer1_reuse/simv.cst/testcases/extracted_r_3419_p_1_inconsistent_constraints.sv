class c_3419_1;
    integer i = -568;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3419_1;
    c_3419_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1001000zx1x1x110110zx10xx1xz0xxzxxzxzxxzxzxzzxxxxzxxxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
