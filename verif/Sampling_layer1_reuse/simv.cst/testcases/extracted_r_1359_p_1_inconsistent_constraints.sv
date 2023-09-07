class c_1359_1;
    integer i = -225;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1359_1;
    c_1359_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xx111000x00zxzzz101zz1z0z1100zzzxzxzxxxxzxxxzzxzxzxzxzxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
