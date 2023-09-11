class c_3278_1;
    integer i = -545;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3278_1;
    c_3278_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111zxx01xx111zz1xx1xx0zxx11xzzzzzzxxzxzxxxzzxzxxxzxzxzzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
