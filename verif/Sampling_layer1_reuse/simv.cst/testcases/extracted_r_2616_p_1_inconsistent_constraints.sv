class c_2616_1;
    integer i = -434;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2616_1;
    c_2616_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxzz1zz1xzz0x0xxxz0xxx1zxx00xxzzxxzzzzzxzxzzxxzzzzxxzxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
