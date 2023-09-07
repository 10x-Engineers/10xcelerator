class c_660_1;
    integer i = 660;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_660_1;
    c_660_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101zz00x0zxzxxxxxx10xx0x1x1z0x1xxzxzxzxxzxzzzzzzxxzzzxzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
