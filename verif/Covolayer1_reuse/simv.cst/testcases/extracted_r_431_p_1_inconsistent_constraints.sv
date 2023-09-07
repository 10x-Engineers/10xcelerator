class c_431_1;
    integer i = -429;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_431_1;
    c_431_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110z01zx0z11xx0010zxzxz1xz1x1z1zxxxxxzxzzxxzzzzzxzxzzxxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
