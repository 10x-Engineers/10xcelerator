class c_619_1;
    integer i = 619;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_619_1;
    c_619_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xx0xxx001xzx1z0x110xxzzzx0101zxzxzzxzzxzxzxzzzzzzxxzxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
