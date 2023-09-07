class c_3443_1;
    integer i = -572;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3443_1;
    c_3443_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z01zz1xzzz00xxzzz11x1z0z00000zxzxxzzzxzzzxxzxxxxzzxxzxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
