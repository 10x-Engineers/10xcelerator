class c_631_1;
    integer i = -104;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_631_1;
    c_631_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x110zzzxx00xxz11x1z00z1xz1zxz1xzxzzxxzxxzxzxzxxxzzzxxxzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
