class c_2634_1;
    integer i = -437;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2634_1;
    c_2634_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011z110110x0011xz00001xzz001010xzzzzzzxxzzzzxzxxxzxxzxxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
