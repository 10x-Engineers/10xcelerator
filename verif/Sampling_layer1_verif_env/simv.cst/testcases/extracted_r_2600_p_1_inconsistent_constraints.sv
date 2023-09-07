class c_2600_1;
    integer i = -432;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2600_1;
    c_2600_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011101zxzz00zxzxz0z1x10z01101010xxzzzzzzzzxxzxxxzxzxzzxzzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
