class c_459_1;
    integer i = 459;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_459_1;
    c_459_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz1x0xxx1xxx1xxzxx00z111xx1z11xzzzxxzzxzzzzzxzzzzxxxxxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
