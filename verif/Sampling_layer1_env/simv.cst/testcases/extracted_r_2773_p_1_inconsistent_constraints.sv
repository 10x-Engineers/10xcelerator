class c_2773_1;
    integer i = -461;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2773_1;
    c_2773_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx01zxx0z0zxzzxzx1xzx0x01zx1zz1zzzzxxxzzzxxxzzxxzxzxxxzxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
