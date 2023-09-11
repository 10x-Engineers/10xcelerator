class c_253_1;
    integer i = -41;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_253_1;
    c_253_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx001z00xxzxzz1xxxzxx0z101x10zxzxzxxxzzzzzxxzzxzxxzzzzzxxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
