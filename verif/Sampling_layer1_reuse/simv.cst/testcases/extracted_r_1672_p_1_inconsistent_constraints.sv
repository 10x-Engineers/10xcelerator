class c_1672_1;
    integer i = -277;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1672_1;
    c_1672_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz11xz11z011100xzxzxx00xxz101xzzzzxxzxzzxxxzzxxxzxzzzzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
