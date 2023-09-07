class c_48_1;
    integer i = -6;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_48_1;
    c_48_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1z1z0010xx00z0z1zxz1xzzz1xzx0zxxxzzxxxxzxzxzzxxzxxxzzzzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
