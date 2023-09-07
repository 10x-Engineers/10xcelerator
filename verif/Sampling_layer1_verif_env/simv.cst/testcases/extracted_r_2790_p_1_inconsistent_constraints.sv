class c_2790_1;
    integer i = -463;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2790_1;
    c_2790_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxx0zz01xzzz0zxx1z00x10xxxzxz1xxzzxxxzzxzzxxzzxxzxzxxzxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
