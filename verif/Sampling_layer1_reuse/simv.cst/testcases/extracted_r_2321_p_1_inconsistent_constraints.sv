class c_2321_1;
    integer i = -385;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2321_1;
    c_2321_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xx0x1xz1xx00z0010010xxz110x1xzzxxzxxxzzzzzxzxzzzzzzxxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
