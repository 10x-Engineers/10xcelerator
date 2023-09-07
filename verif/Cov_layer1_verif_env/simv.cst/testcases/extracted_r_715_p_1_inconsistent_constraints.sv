class c_715_1;
    integer i = -713;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_715_1;
    c_715_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01010x0110z1001xxx1xzzx0zxx11010zxxxxzxzzxzzzxzxzzxzxxxxzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
