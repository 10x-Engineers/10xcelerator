class c_2828_1;
    integer i = -470;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2828_1;
    c_2828_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11xxx0xz111xxz00xxxxxz110x11z0zxxxxzzxzzzzxxxxzxxxzxxxzxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
