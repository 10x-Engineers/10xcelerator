class c_2671_1;
    integer i = -444;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2671_1;
    c_2671_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxzxxzxzxzzxz1xzx1xzz10zxzxxx01zxzxxxxzxxxxzxzxzzzxxxzzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
