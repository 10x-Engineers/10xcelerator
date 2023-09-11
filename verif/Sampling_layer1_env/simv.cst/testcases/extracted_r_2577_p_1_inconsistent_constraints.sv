class c_2577_1;
    integer i = -428;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2577_1;
    c_2577_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zz0xxzxx1xxzzz110zx01x000zx1zxzzzzxxxxzzxxxzzzzxzzzzzzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
