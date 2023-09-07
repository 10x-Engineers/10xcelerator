class c_2783_1;
    integer i = -462;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2783_1;
    c_2783_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xx0x0z0zz101011000xx11xzzzz1xxzzxxzxxxzxzzxxzzzxzzzzxzxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
