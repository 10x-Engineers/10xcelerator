class c_3188_1;
    integer i = -530;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3188_1;
    c_3188_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x0011z010x1xxxz00zz1z010x1x0zxxxzxxxxxxxzzzzxzxxzxzzxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
