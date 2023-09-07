class c_82_1;
    integer i = -80;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_82_1;
    c_82_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1100zxx10z11xxxz000z00x0x1xx0xzzzzxzzxxxxxxxxxzxzxzzzzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
