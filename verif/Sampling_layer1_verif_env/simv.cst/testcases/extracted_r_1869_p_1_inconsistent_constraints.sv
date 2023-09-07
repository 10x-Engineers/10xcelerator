class c_1869_1;
    integer i = -310;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1869_1;
    c_1869_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0011x1xz111xx1zxx10zz0z1z0x1z1z1xxxzxxzzzzzxxxxzzzxzzxxxzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
