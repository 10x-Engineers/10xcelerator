class c_83_1;
    integer i = -81;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_83_1;
    c_83_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1011010xz0x0011x0zxx1011xxx101xzxxxxxzzzzxzzzzzzzxxzxxxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
