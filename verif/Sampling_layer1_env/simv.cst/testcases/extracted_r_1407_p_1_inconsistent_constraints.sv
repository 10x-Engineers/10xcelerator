class c_1407_1;
    integer i = -233;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1407_1;
    c_1407_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10zz0z000xzzz0000x1xzxz0zxz000zxxzxxxxxxxzzxxxxzzzxxzxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
