class c_2908_1;
    integer i = -483;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2908_1;
    c_2908_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz00z001x00z1011x0z11z11xzzz10zxzxxxzxxzxzxzxxxzxxxzxxzzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
