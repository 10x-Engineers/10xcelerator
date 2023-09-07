class c_2424_1;
    integer i = -402;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2424_1;
    c_2424_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1010xz0z1z01zxz110zxxzxxzz0zxzzxxxzxzxxzxzxxxxxzxzzxxzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
