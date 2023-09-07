class c_1847_1;
    integer i = -306;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1847_1;
    c_1847_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011110010x0z1z0x010xx0zx0z0zzxxzxxxzzzzxxzxxxzzzzxxxxxzzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
