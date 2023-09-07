class c_2300_1;
    integer i = -382;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2300_1;
    c_2300_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzz00xxx001z1xzxxx1zxx1xxzzx00xzzxxzxxzzzxxxzzxxxzzxzxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
