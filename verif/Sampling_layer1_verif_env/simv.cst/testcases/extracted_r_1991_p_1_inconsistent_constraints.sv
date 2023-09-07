class c_1991_1;
    integer i = -330;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1991_1;
    c_1991_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz110z1xx00z001xx00x0z011x1xx100zxxxxzxxxzxxzzzzxzxzxzxzzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
