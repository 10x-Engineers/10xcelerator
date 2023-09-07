class c_3413_1;
    integer i = -567;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3413_1;
    c_3413_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0z101xxx0z1zxxzz1000010xzz00z0xxzxxzxzxzxxzxzxxzxzzxxzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
